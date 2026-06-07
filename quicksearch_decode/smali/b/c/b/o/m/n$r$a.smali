.class public Lb/c/b/o/m/n$r$a;
.super Lb/c/b/m;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/b/o/m/n$r;->create(Lb/c/b/c;Lb/c/b/p/a;)Lb/c/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/b/m<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/c/b/m;


# direct methods
.method public constructor <init>(Lb/c/b/o/m/n$r;Lb/c/b/m;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lb/c/b/o/m/n$r$a;->a:Lb/c/b/m;

    invoke-direct {p0}, Lb/c/b/m;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lb/c/b/q/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/c/b/o/m/n$r$a;->a(Lb/c/b/q/a;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/c/b/q/a;)Ljava/sql/Timestamp;
    .locals 3

    .line 3
    iget-object v0, p0, Lb/c/b/o/m/n$r$a;->a:Lb/c/b/m;

    invoke-virtual {v0, p1}, Lb/c/b/m;->a(Lb/c/b/q/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic a(Lb/c/b/q/c;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lb/c/b/o/m/n$r$a;->a(Lb/c/b/q/c;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public a(Lb/c/b/q/c;Ljava/sql/Timestamp;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lb/c/b/o/m/n$r$a;->a:Lb/c/b/m;

    invoke-virtual {v0, p1, p2}, Lb/c/b/m;->a(Lb/c/b/q/c;Ljava/lang/Object;)V

    return-void
.end method
