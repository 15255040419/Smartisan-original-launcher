.class public final Lb/c/b/o/m/n$h;
.super Lb/c/b/m;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/b/o/m/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/b/m<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/c/b/m;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lb/c/b/q/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/c/b/o/m/n$h;->a(Lb/c/b/q/a;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/c/b/q/a;)Ljava/math/BigDecimal;
    .locals 2

    .line 3
    invoke-virtual {p1}, Lb/c/b/q/a;->t()Lb/c/b/q/b;

    move-result-object v0

    sget-object v1, Lb/c/b/q/b;->i:Lb/c/b/q/b;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lb/c/b/q/a;->q()V

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lb/c/b/q/a;->r()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Lb/c/b/k;

    invoke-direct {v0, p1}, Lb/c/b/k;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic a(Lb/c/b/q/c;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Lb/c/b/o/m/n$h;->a(Lb/c/b/q/c;Ljava/math/BigDecimal;)V

    return-void
.end method

.method public a(Lb/c/b/q/c;Ljava/math/BigDecimal;)V
    .locals 0

    .line 7
    invoke-virtual {p1, p2}, Lb/c/b/q/c;->a(Ljava/lang/Number;)Lb/c/b/q/c;

    return-void
.end method
