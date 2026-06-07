.class public Lb/a/a/o1/c/b$c;
.super Landroid/os/Handler;
.source "AppImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/o1/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb/a/a/o1/c/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lb/a/a/o1/c/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lb/a/a/o1/c/b$b;

    .line 2
    :try_start_0
    iget-object v0, p1, Lb/a/a/o1/c/b$b;->a:Landroid/widget/ImageView;

    iget-object p1, p1, Lb/a/a/o1/c/b$b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "QSB.AppImgLoader"

    const-string v0, "exception happens when set drawable"

    .line 3
    invoke-static {p1, v0}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
