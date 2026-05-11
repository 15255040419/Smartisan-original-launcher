.class Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;
.super Ljava/lang/Object;
.source "LoaderManagerImpl.java"

# interfaces
.implements Landroid/arch/lifecycle/y;


# instance fields
.field private final mCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

.field private mDeliveredData:Z

.field private final mLoader:Landroid/support/v4/content/Loader;


# direct methods
.method constructor <init>(Landroid/support/v4/content/Loader;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    .line 3
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroid/support/v4/content/Loader;

    .line 4
    iput-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mDeliveredData="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method hasDeliveredData()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    return p0
.end method

.method public onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onLoadFinished in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroid/support/v4/content/Loader;

    .line 3
    invoke-virtual {v1, p1}, Landroid/support/v4/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroid/support/v4/content/Loader;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    return-void
.end method

.method reset()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Resetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    iget-object p0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroid/support/v4/content/Loader;

    invoke-interface {v0, p0}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroid/support/v4/content/Loader;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
