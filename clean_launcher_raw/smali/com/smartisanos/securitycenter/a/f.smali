.class Lcom/smartisanos/securitycenter/a/f;
.super Lcom/smartisanos/securitycenter/b/b;
.source "FaceIdServiceGlobal.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/securitycenter/a/g;


# direct methods
.method constructor <init>(Lcom/smartisanos/securitycenter/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/a/f;->this$0:Lcom/smartisanos/securitycenter/a/g;

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/smartisanos/securitycenter/b/b;->a(II)V

    const-string p0, "FaceIdServiceGlobal"

    const-string p1, "onFaceDetectResult"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/securitycenter/b/b;->b()V

    const-string p0, "FaceIdServiceGlobal"

    const-string v0, "onFingerprintLockoutReset"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/securitycenter/b/b;->c()V

    const-string p0, "FaceIdServiceGlobal"

    const-string v0, "onAuthenticationInit"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAuthenticationAcquired(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/securitycenter/b/b;->onAuthenticationAcquired(I)V

    const-string p0, "FaceIdServiceGlobal"

    const-string p1, "onAuthenticationAcquired"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/smartisanos/securitycenter/b/b;->onAuthenticationError(ILjava/lang/CharSequence;)V

    const-string p0, "FaceIdServiceGlobal"

    const-string p1, "onAuthenticationError"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/securitycenter/b/b;->onAuthenticationFailed()V

    const-string p0, "FaceIdServiceGlobal"

    const-string v0, "onAuthenticationFailed"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/smartisanos/securitycenter/b/b;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    const-string p0, "FaceIdServiceGlobal"

    const-string p1, "onAuthenticationHelp"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAuthenticationSucceeded()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/securitycenter/b/b;->onAuthenticationSucceeded()V

    const-string p0, "FaceIdServiceGlobal"

    const-string v0, "onAuthenticationSucceeded"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
