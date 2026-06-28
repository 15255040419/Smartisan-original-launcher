.class Landroidx/fragment/app/FragmentManagerImpl$2;
.super Ljava/lang/Object;
.source "FragmentManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Landroidx/fragment/app/FragmentManagerImpl;)V
    .locals 0

    .line 147
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl$2;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 150
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl$2;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    return-void
.end method
