.class Landroidx/fragment/app/FragmentManagerImpl$6;
.super Landroidx/fragment/app/FragmentFactory;
.source "FragmentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentManagerImpl;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/FragmentManagerImpl;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManagerImpl;)V
    .locals 0

    .line 2845
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl$6;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {p0}, Landroidx/fragment/app/FragmentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 2851
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl$6;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object p1, p1, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl$6;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroidx/fragment/app/FragmentHostCallback;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method
