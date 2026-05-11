.class final Lcom/smartisanos/securitycenter/a/h;
.super Landroid/util/Singleton;
.source "FaceIdStateListenerGlobal.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/smartisanos/securitycenter/a/i;
    .locals 1

    .line 2
    new-instance p0, Lcom/smartisanos/securitycenter/a/i;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/a/i;-><init>(Lcom/smartisanos/securitycenter/a/h;)V

    return-object p0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/a/h;->create()Lcom/smartisanos/securitycenter/a/i;

    move-result-object p0

    return-object p0
.end method
