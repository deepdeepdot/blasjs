      PROGRAM dsbmvcase0
      
      EXTERNAL DSBMV

      CHARACTER UPLO
      INTEGER N,K, LDA,INCX,INCY 
      DOUBLE PRECISION ALPHA, BETA, Y(6), X(6)
      DOUBLE PRECISION A(6,6)

      DATA   ((A(I,J), I=1,6), J=1,6)/0, 0, 0, 0, 0, 1.2629542848807933,
     +  0, 0, 0, 0, -0.9285670347135381, -0.2947204467905602,
     +  0, 0, 0, -1.1476570092363514, -0.28946157368822334,
     + -0.29921511789731614,
     +  0, 0, 0.43568329935571865, 
     + -1.237538421929958, 
     + -0.22426788527830935, 0.37739564598170106,
     +  0, -0.057106774383808755, 0.5036079722337261, 1.085769362145687,
     + -0.6909538396968303, -1.2845993538721883,
     + -0.23570655643950122, -0.5428882550102544, -0.4333103174567822, 
     + -0.6494716467962331, 0.726750747385451, 1.1519117540872/

      DATA     (Y(I),I=1,6)/
     + -0.17262350264585732,
     + -2.2239002740099374,
     + -1.263614384970583,
     + 0.3587288959713519,
     + -0.011045478465663564,
     + -0.9406491626186084/
     
      DATA     (X(I),I=1,6)/
     + -0.17262350264585732,
     + -2.2239002740099374,
     + -1.263614384970583,
     + 0.3587288959713519,
     + -0.011045478465663564,
     + -0.9406491626186084/
     
      uplo = 'U'
      n = 6
      k = 5
      alpha = 0.75
      beta = 0.25
      lda = 6
      incx = 1
      incy = 1
    
      call DSBMV(UPLO, N, K, ALPHA, A, LDA, X, INCX, BETA, Y, INCY)
c       call DSBMV(UPLO,N,K,ALPHA,A,LDA,X,INCX,BETA,Y,INCY)
      print *,I,"|", Y
     
      end

     