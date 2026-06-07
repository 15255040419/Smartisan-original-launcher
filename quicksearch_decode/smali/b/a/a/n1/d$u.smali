.class public final Lb/a/a/n1/d$u;
.super Ljava/lang/Object;
.source "AgentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/n1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "u"
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/n1/d$u;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lb/a/a/n1/h0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lb/a/a/n1/d$u;->a:Ljava/lang/String;

    return-void
.end method

.method public static b()V
    .locals 1

    const-string v0, "A170049"

    .line 1
    invoke-static {v0}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lb/a/a/n1/d$u;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lb/a/a/n1/d$u;->a:Ljava/lang/String;

    .line 3
    invoke-static {p0}, Lb/a/a/n1/h0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lb/a/a/n1/d$u;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c()V
    .locals 1

    .line 1
    new-instance v0, Lb/a/a/n1/d$u$a;

    invoke-direct {v0}, Lb/a/a/n1/d$u$a;-><init>()V

    invoke-static {v0}, Lb/a/a/n1/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method
