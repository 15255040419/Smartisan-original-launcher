.class public final Lb/c/b/o/m/n$g;
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
        "Ljava/lang/String;",
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
    invoke-virtual {p0, p1}, Lb/c/b/o/m/n$g;->a(Lb/c/b/q/a;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/c/b/q/a;)Ljava/lang/String;
    .locals 2

    .line 3
    invoke-virtual {p1}, Lb/c/b/q/a;->t()Lb/c/b/q/b;

    move-result-object v0

    .line 4
    sget-object v1, Lb/c/b/q/b;->i:Lb/c/b/q/b;

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lb/c/b/q/a;->q()V

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    sget-object v1, Lb/c/b/q/b;->h:Lb/c/b/q/b;

    if-ne v0, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lb/c/b/q/a;->l()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    invoke-virtual {p1}, Lb/c/b/q/a;->r()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lb/c/b/q/c;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lb/c/b/o/m/n$g;->a(Lb/c/b/q/c;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lb/c/b/q/c;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-virtual {p1, p2}, Lb/c/b/q/c;->d(Ljava/lang/String;)Lb/c/b/q/c;

    return-void
.end method
