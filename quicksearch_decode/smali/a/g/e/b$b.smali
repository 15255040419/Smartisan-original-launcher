.class public final La/g/e/b$b;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/g/e/b;->a(Landroid/content/Context;La/g/e/a;La/g/b/c/e$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/provider/SelfDestructiveThread$ReplyCallback<",
        "La/g/e/b$g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:La/g/b/c/e$a;

.field public final synthetic b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(La/g/b/c/e$a;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/g/e/b$b;->a:La/g/b/c/e$a;

    iput-object p2, p0, La/g/e/b$b;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/g/e/b$g;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, La/g/e/b$b;->a:La/g/b/c/e$a;

    const/4 v0, 0x1

    iget-object v1, p0, La/g/e/b$b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, La/g/b/c/e$a;->a(ILandroid/os/Handler;)V

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p1, La/g/e/b$g;->b:I

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, La/g/e/b$b;->a:La/g/b/c/e$a;

    iget-object p1, p1, La/g/e/b$g;->a:Landroid/graphics/Typeface;

    iget-object v1, p0, La/g/e/b$b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, La/g/b/c/e$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, La/g/e/b$b;->a:La/g/b/c/e$a;

    iget-object v1, p0, La/g/e/b$b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, La/g/b/c/e$a;->a(ILandroid/os/Handler;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onReply(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, La/g/e/b$g;

    invoke-virtual {p0, p1}, La/g/e/b$b;->a(La/g/e/b$g;)V

    return-void
.end method
