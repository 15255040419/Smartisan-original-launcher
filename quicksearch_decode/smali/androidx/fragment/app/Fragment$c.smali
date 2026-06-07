.class public Landroidx/fragment/app/Fragment$c;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/Fragment$c;->a:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLifecycle()La/l/b;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment$c;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->T:La/l/c;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, La/l/c;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->U:Landroidx/lifecycle/LifecycleOwner;

    invoke-direct {v1, v2}, La/l/c;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->T:La/l/c;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment$c;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->T:La/l/c;

    return-object v0
.end method
