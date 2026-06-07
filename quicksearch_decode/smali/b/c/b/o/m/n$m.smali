.class public final Lb/c/b/o/m/n$m;
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
        "Ljava/net/URL;",
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
    invoke-virtual {p0, p1}, Lb/c/b/o/m/n$m;->a(Lb/c/b/q/a;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/c/b/q/a;)Ljava/net/URL;
    .locals 3

    .line 3
    invoke-virtual {p1}, Lb/c/b/q/a;->t()Lb/c/b/q/b;

    move-result-object v0

    sget-object v1, Lb/c/b/q/b;->i:Lb/c/b/q/b;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lb/c/b/q/a;->q()V

    return-object v2

    .line 5
    :cond_0
    invoke-virtual {p1}, Lb/c/b/q/a;->r()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method public bridge synthetic a(Lb/c/b/q/c;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Ljava/net/URL;

    invoke-virtual {p0, p1, p2}, Lb/c/b/o/m/n$m;->a(Lb/c/b/q/c;Ljava/net/URL;)V

    return-void
.end method

.method public a(Lb/c/b/q/c;Ljava/net/URL;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lb/c/b/q/c;->d(Ljava/lang/String;)Lb/c/b/q/c;

    return-void
.end method
