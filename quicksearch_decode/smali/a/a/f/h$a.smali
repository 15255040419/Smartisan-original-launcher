.class public La/a/f/h$a;
.super La/g/b/c/e$a;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/f/h;->a(Landroid/content/Context;La/a/f/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:La/a/f/h;


# direct methods
.method public constructor <init>(La/a/f/h;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/f/h$a;->b:La/a/f/h;

    iput-object p2, p0, La/a/f/h$a;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, La/g/b/c/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, La/a/f/h$a;->b:La/a/f/h;

    iget-object v1, p0, La/a/f/h$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, p1}, La/a/f/h;->a(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V

    return-void
.end method
