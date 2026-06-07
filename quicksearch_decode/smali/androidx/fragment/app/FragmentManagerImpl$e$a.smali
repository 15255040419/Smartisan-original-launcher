.class public Landroidx/fragment/app/FragmentManagerImpl$e$a;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentManagerImpl$e;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentManagerImpl$e;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManagerImpl$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl$e$a;->a:Landroidx/fragment/app/FragmentManagerImpl$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$e$a;->a:Landroidx/fragment/app/FragmentManagerImpl$e;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl$e;->b:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
