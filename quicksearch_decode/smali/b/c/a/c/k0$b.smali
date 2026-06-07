.class public Lb/c/a/c/k0$b;
.super Lb/c/a/c/p0$c;
.source "ImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/c/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lb/c/a/c/k0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/k0<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lb/c/a/c/p0$c;-><init>(Lb/c/a/c/p0;)V

    return-void
.end method


# virtual methods
.method public readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lb/c/a/c/k0$a;

    invoke-direct {v0}, Lb/c/a/c/k0$a;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lb/c/a/c/p0$c;->a(Lb/c/a/c/p0$b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
