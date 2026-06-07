.class public Lb/c/a/c/j0$a;
.super Ljava/lang/Object;
.source "ImmutableAsList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/c/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final a:Lb/c/a/c/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/m0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/c/a/c/m0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/m0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/c/a/c/j0$a;->a:Lb/c/a/c/m0;

    return-void
.end method


# virtual methods
.method public readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/j0$a;->a:Lb/c/a/c/m0;

    invoke-virtual {v0}, Lb/c/a/c/m0;->a()Lb/c/a/c/o0;

    move-result-object v0

    return-object v0
.end method
