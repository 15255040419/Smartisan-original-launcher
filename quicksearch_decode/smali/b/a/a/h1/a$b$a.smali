.class public Lb/a/a/h1/a$b$a;
.super Ljava/lang/Object;
.source "MusicServiceConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/h1/a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/h1/a$b;


# direct methods
.method public constructor <init>(Lb/a/a/h1/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/h1/a$b$a;->a:Lb/a/a/h1/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/h1/a$b$a;->a:Lb/a/a/h1/a$b;

    iget-object v0, v0, Lb/a/a/h1/a$b;->a:Lb/a/a/h1/a;

    invoke-static {v0}, Lb/a/a/h1/a;->d(Lb/a/a/h1/a;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/music/MusicServiceManager$Callback;

    .line 2
    invoke-interface {v1}, Lcom/android/quicksearchbox/music/MusicServiceManager$Callback;->onMusicStateChange()V

    goto :goto_0

    :cond_0
    return-void
.end method
