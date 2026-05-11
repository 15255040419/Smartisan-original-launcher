.class final Lcom/smartisanos/securitycenter/a/j;
.super Landroid/util/Singleton;
.source "PrivacySecurityGlobal.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/smartisanos/securitycenter/a/l;
    .locals 1

    .line 2
    new-instance p0, Lcom/smartisanos/securitycenter/a/l;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/a/l;-><init>(Lcom/smartisanos/securitycenter/a/j;)V

    return-object p0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/a/j;->create()Lcom/smartisanos/securitycenter/a/l;

    move-result-object p0

    return-object p0
.end method
