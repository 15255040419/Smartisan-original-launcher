.class public final Lb/c/a/c/q0$a;
.super Lb/c/a/c/q0$b;
.source "ImmutableMapEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/c/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/c/q0$b<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final transient d:Lb/c/a/c/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/q0<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lb/c/a/c/q0;Lb/c/a/c/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lb/c/a/c/q0<",
            "TK;TV;>;",
            "Lb/c/a/c/q0<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lb/c/a/c/q0$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lb/c/a/c/q0;)V

    .line 2
    iput-object p4, p0, Lb/c/a/c/q0$a;->d:Lb/c/a/c/q0;

    return-void
.end method


# virtual methods
.method public b()Lb/c/a/c/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/q0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/q0$a;->d:Lb/c/a/c/q0;

    return-object v0
.end method
