.class public Landroid/arch/lifecycle/F;
.super Ljava/lang/Object;
.source "ViewModelProvider.java"


# instance fields
.field private final mFactory:Landroid/arch/lifecycle/E;

.field private final mViewModelStore:Landroid/arch/lifecycle/G;


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/G;Landroid/arch/lifecycle/E;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/arch/lifecycle/F;->mFactory:Landroid/arch/lifecycle/E;

    .line 3
    iput-object p1, p0, Landroid/arch/lifecycle/F;->mViewModelStore:Landroid/arch/lifecycle/G;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Class;)Landroid/arch/lifecycle/D;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/F;->mViewModelStore:Landroid/arch/lifecycle/G;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/G;->get(Ljava/lang/String;)Landroid/arch/lifecycle/D;

    move-result-object v0

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/arch/lifecycle/F;->mFactory:Landroid/arch/lifecycle/E;

    invoke-interface {v0, p2}, Landroid/arch/lifecycle/E;->create(Ljava/lang/Class;)Landroid/arch/lifecycle/D;

    move-result-object p2

    .line 4
    iget-object p0, p0, Landroid/arch/lifecycle/F;->mViewModelStore:Landroid/arch/lifecycle/G;

    invoke-virtual {p0, p1, p2}, Landroid/arch/lifecycle/G;->a(Ljava/lang/String;Landroid/arch/lifecycle/D;)V

    return-object p2
.end method

.method public c(Ljava/lang/Class;)Landroid/arch/lifecycle/D;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.arch.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/arch/lifecycle/F;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/arch/lifecycle/D;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
