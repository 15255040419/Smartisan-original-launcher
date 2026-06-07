.class public final La/g/e/b$a;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "La/g/e/b$g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:La/g/e/a;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;La/g/e/a;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/g/e/b$a;->a:Landroid/content/Context;

    iput-object p2, p0, La/g/e/b$a;->b:La/g/e/a;

    iput p3, p0, La/g/e/b$a;->c:I

    iput-object p4, p0, La/g/e/b$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()La/g/e/b$g;
    .locals 4

    .line 2
    iget-object v0, p0, La/g/e/b$a;->a:Landroid/content/Context;

    iget-object v1, p0, La/g/e/b$a;->b:La/g/e/a;

    iget v2, p0, La/g/e/b$a;->c:I

    invoke-static {v0, v1, v2}, La/g/e/b;->a(Landroid/content/Context;La/g/e/a;I)La/g/e/b$g;

    move-result-object v0

    .line 3
    iget-object v1, v0, La/g/e/b$g;->a:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 4
    sget-object v2, La/g/e/b;->a:La/d/e;

    iget-object v3, p0, La/g/e/b$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, La/d/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, La/g/e/b$a;->call()La/g/e/b$g;

    move-result-object v0

    return-object v0
.end method
