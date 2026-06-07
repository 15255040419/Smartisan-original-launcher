.class public La/g/b/c/e$a$b;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/g/b/c/e$a;->a(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:La/g/b/c/e$a;


# direct methods
.method public constructor <init>(La/g/b/c/e$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, La/g/b/c/e$a$b;->b:La/g/b/c/e$a;

    iput p2, p0, La/g/b/c/e$a$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, La/g/b/c/e$a$b;->b:La/g/b/c/e$a;

    iget v1, p0, La/g/b/c/e$a$b;->a:I

    invoke-virtual {v0, v1}, La/g/b/c/e$a;->a(I)V

    return-void
.end method
