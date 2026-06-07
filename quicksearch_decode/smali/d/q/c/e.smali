.class public abstract Ld/q/c/e;
.super Ljava/lang/Object;
.source "Lambda.kt"

# interfaces
.implements Lkotlin/jvm/internal/FunctionBase;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/jvm/internal/FunctionBase<",
        "TR;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld/q/c/e;->a:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 1

    .line 1
    iget v0, p0, Ld/q/c/e;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Ld/q/c/h;->a(Ld/q/c/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reflection.renderLambdaToString(this)"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
