.class public Lb/a/a/i1/a;
.super Ljava/lang/Object;
.source "NetworkAssociationalTask.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/NamedTask;


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lb/a/a/i1/a;->a:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lb/a/a/i1/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "NetworkAssociationalTask"

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/quicksearchbox/network/QsbHttpManager;->c()Lcom/android/quicksearchbox/network/QsbHttpManager;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/i1/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/network/QsbHttpManager;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/a/a/i1/a;->a:Landroid/os/Handler;

    invoke-static {v1, v0}, Lb/a/a/n1/k;->a(Landroid/os/Handler;[Ljava/lang/String;)V

    return-void
.end method
