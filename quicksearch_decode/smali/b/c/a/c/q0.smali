.class public Lb/c/a/c/q0;
.super Lb/c/a/c/n0;
.source "ImmutableMapEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/c/q0$a;,
        Lb/c/a/c/q0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/c/n0<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lb/c/a/c/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1, p2}, Lb/c/a/c/z;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(I)[Lb/c/a/c/q0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lb/c/a/c/q0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-array p0, p0, [Lb/c/a/c/q0;

    return-object p0
.end method


# virtual methods
.method public a()Lb/c/a/c/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/q0<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lb/c/a/c/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/q0<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
