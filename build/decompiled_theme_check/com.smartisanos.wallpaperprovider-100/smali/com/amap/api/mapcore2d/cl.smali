.class Lcom/amap/api/mapcore2d/cl;
.super Ljava/lang/Object;
.source "UiSettingsDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/ar;


# instance fields
.field private a:Lcom/amap/api/mapcore2d/ad;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private final j:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/ad;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/cl;->b:Z

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/cl;->c:Z

    .line 13
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/cl;->d:Z

    .line 14
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/cl;->e:Z

    .line 15
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/cl;->f:Z

    .line 16
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/cl;->g:Z

    .line 17
    iput v1, p0, Lcom/amap/api/mapcore2d/cl;->h:I

    .line 18
    iput v1, p0, Lcom/amap/api/mapcore2d/cl;->i:I

    .line 25
    new-instance v0, Lcom/amap/api/mapcore2d/cm;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/cm;-><init>(Lcom/amap/api/mapcore2d/cl;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cl;->j:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Lcom/amap/api/mapcore2d/cl;->a:Lcom/amap/api/mapcore2d/ad;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/cl;)Lcom/amap/api/mapcore2d/ad;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cl;->a:Lcom/amap/api/mapcore2d/ad;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/cl;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/cl;->e:Z

    return p0
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/cl;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/cl;->g:Z

    return p0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/cl;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/cl;->f:Z

    return p0
.end method

.method static synthetic e(Lcom/amap/api/mapcore2d/cl;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/cl;->c:Z

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    iput p1, p0, Lcom/amap/api/mapcore2d/cl;->h:I

    .line 110
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cl;->a:Lcom/amap/api/mapcore2d/ad;

    invoke-interface {p0, p1}, Lcom/amap/api/mapcore2d/ad;->b(I)V

    return-void
.end method

.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/cl;->g:Z

    .line 64
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cl;->j:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/cl;->g:Z

    return p0
.end method

.method public b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    iput p1, p0, Lcom/amap/api/mapcore2d/cl;->i:I

    .line 116
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cl;->a:Lcom/amap/api/mapcore2d/ad;

    invoke-interface {p0, p1}, Lcom/amap/api/mapcore2d/ad;->c(I)V

    return-void
.end method

.method public b(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/cl;->e:Z

    .line 71
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cl;->j:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/cl;->e:Z

    return p0
.end method

.method public c(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/cl;->f:Z

    .line 78
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cl;->j:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public c()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/cl;->f:Z

    return p0
.end method

.method public d(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/cl;->c:Z

    .line 86
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cl;->j:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public d()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/cl;->c:Z

    return p0
.end method

.method public e(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/cl;->b:Z

    return-void
.end method

.method public e()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/cl;->b:Z

    return p0
.end method

.method public f(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/cl;->d:Z

    return-void
.end method

.method public f()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/cl;->d:Z

    return p0
.end method

.method public g()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    iget p0, p0, Lcom/amap/api/mapcore2d/cl;->h:I

    return p0
.end method

.method public g(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/cl;->f(Z)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/cl;->e(Z)V

    return-void
.end method

.method public h()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    iget p0, p0, Lcom/amap/api/mapcore2d/cl;->i:I

    return p0
.end method
