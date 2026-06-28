.class Landroidx/fragment/app/FragmentManagerImpl$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "FragmentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/FragmentManagerImpl;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManagerImpl;Z)V
    .locals 0

    .line 105
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl$1;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 0

    .line 108
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl$1;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->handleOnBackPressed()V

    return-void
.end method
