.class Landroid/icu/impl/number/Parse$2;
.super Ljava/lang/ThreadLocal;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/Parse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/text/ParsePosition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 889
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    .line 889
    invoke-virtual {p0}, Landroid/icu/impl/number/Parse$2;->initialValue()Ljava/text/ParsePosition;

    move-result-object p0

    return-object p0
.end method

.method protected initialValue()Ljava/text/ParsePosition;
    .locals 1

    .line 892
    new-instance p0, Ljava/text/ParsePosition;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/text/ParsePosition;-><init>(I)V

    return-object p0
.end method
