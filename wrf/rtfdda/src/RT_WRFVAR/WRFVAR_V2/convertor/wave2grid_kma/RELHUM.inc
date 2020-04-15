      SUBROUTINE RELHUM             !shc start
     I  (GTMP,GWV,GPS,IMAX,JMAX,KMAX,A,B,
     O   GRH)
C***********************************************************************
C                  CALCULATION OF RELATIVE HUMIDITY
C   �t�����x���C���v�Z�@�\�t�iJ�����Łj
C   CREATED                                      MAR.05,1998  T.TSUYUKI
C   REVISED TO DECREASE LOG CALCULATION          AUG    1999  Y.TAHARA
C 2000.04.18 ��Ɣz���p���������� RELHUM9�Ƃǂ��炪������
C            ���`�F�b�N
C***********************************************************************
C<INPUT>
C GTMP: �C���i�t�����x���j(K)
C GWV: �䎼�i�t�����x���j(KG/KG)
C GPS: ���f���n�\�C��(���x��1/2�j(HPA)
C<OUTPUT>
C GRH: ���Ύ��x�i�t�����x���j(NON-UNIT)
C***********************************************************************
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
C
      PARAMETER (KM=50,IMAXD=640)
C
      DIMENSION GTMP(IMAX,JMAX,KMAX), GWV (IMAX,JMAX,KMAX),
     &          GPS (IMAX,JMAX     )
      DIMENSION GRH (IMAX,JMAX,KMAX)
C
      DIMENSION PFULL(IMAXD,KM)
      REAL*8    A(KMAX+1), B(KMAX+1)
      PARAMETER( T0=273.15D0,E0C=6.11D0,AL=17.3D0,BL=237.3D0,
     .                                  AI=21.9D0,BI=265.3D0)
C******************** PROCEDURE ****************************************
      IF (KMAX.GT.KM) THEN
        WRITE(6,*) ' ERROR: <KMAX> IS TOO LARGE. in RELHUM'
        STOP 100
      END IF
C : �i�q�_���̏���
      DO 1000 J = 1, JMAX
C : �n�[�t���x���C��(HPA)�v�Z
        DO 100 K = 1, KMAX-1
      DO 1100 I = 1, IMAX
          PU  = A(K+1) + B(K+1)*GPS(I,J)
          PD  = A(K  ) + B(K  )*GPS(I,J)
C : �t�����x���C��(HPA)�v�Z
          PFULL(I,K) = DEXP(( PD*DLOG(PD)-PU*DLOG(PU) )/(PD-PU) -1.D0)
 1100 CONTINUE
  100   CONTINUE
      DO 1300 I = 1, IMAX
        PFULL(I,KMAX) = (A(KMAX)+B(KMAX)*GPS(I,J))/2.D0
 1300 CONTINUE

C : �t�����x�����Ύ��x(NON-UNIT)�v�Z
        DO 300 K = 1, KMAX
      DO 1400 I = 1, IMAX
          P = PFULL(I,K)
          T = GTMP(I,J,K)
          Q = GWV (I,J,K)

          E = Q*P/(0.378D0*Q+0.622D0)
C         CALL TETEN  (ES,T)
C=====================================================
      TC = T-T0
      IF (TC.GE.0.D0) THEN
        ES= E0C *  EXP(AL*TC/(BL+TC))
      ELSE IF (TC.LE.-15.D0) THEN
        ES= E0C *  EXP(AI*TC/(BI+TC))
      ELSE
        ES= E0C * (EXP(AL*TC/(BL+TC))*(15.D0+TC)/15.D0 +
     .             EXP(AI*TC/(BI+TC))*(-TC)/15.D0)
      END IF
C=====================================================
          GRH(I,J,K) = E/ES

 1400 CONTINUE
  300   CONTINUE

 1000 CONTINUE

      RETURN
      END SUBROUTINE RELHUM    !shc end