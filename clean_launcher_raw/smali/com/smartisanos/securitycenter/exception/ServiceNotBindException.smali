.class public Lcom/smartisanos/securitycenter/exception/ServiceNotBindException;
.super Ljava/lang/RuntimeException;
.source "ServiceNotBindException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static lb(Ljava/lang/String;)Lcom/smartisanos/securitycenter/exception/ServiceNotBindException;
    .locals 3

    .line 1
    new-instance v0, Lcom/smartisanos/securitycenter/exception/ServiceNotBindException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Security service not bind: %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/exception/ServiceNotBindException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
