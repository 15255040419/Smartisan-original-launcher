.class public Landroid/arch/lifecycle/C;
.super Ljava/lang/Object;
.source "SingleGeneratedAdapterObserver.java"

# interfaces
.implements Landroid/arch/lifecycle/i;


# instance fields
.field private final Da:Landroid/arch/lifecycle/h;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/arch/lifecycle/C;->Da:Landroid/arch/lifecycle/h;

    return-void
.end method


# virtual methods
.method public a(Landroid/arch/lifecycle/l;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/C;->Da:Landroid/arch/lifecycle/h;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v2, v1}, Landroid/arch/lifecycle/h;->a(Landroid/arch/lifecycle/l;Landroid/arch/lifecycle/Lifecycle$Event;ZLandroid/arch/lifecycle/w;)V

    .line 2
    iget-object p0, p0, Landroid/arch/lifecycle/C;->Da:Landroid/arch/lifecycle/h;

    const/4 v0, 0x1

    invoke-interface {p0, p1, p2, v0, v1}, Landroid/arch/lifecycle/h;->a(Landroid/arch/lifecycle/l;Landroid/arch/lifecycle/Lifecycle$Event;ZLandroid/arch/lifecycle/w;)V

    return-void
.end method
