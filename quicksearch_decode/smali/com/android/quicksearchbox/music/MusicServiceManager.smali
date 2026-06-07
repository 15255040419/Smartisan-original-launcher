.class public Lcom/android/quicksearchbox/music/MusicServiceManager;
.super Ljava/lang/Object;
.source "MusicServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/music/MusicServiceManager$Callback;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Lcom/android/quicksearchbox/music/MusicServiceManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lb/a/a/h1/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/quicksearchbox/music/MusicServiceManager;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/quicksearchbox/music/MusicServiceManager;->a:Landroid/content/Context;

    .line 3
    new-instance v0, Lb/a/a/h1/a;

    invoke-direct {v0, p1}, Lb/a/a/h1/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/music/MusicServiceManager;->b:Lb/a/a/h1/a;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/android/quicksearchbox/music/MusicServiceManager;
    .locals 3

    const-class v0, Lcom/android/quicksearchbox/music/MusicServiceManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/quicksearchbox/music/MusicServiceManager;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/music/MusicServiceManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/android/quicksearchbox/music/MusicServiceManager;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/music/MusicServiceManager;-><init>(Landroid/content/Context;)V

    .line 3
    sget-object v2, Lcom/android/quicksearchbox/music/MusicServiceManager;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcom/android/quicksearchbox/music/MusicServiceManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/quicksearchbox/music/MusicServiceManager;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/music/MusicServiceManager;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 2
    iput-object v2, v1, Lcom/android/quicksearchbox/music/MusicServiceManager;->b:Lb/a/a/h1/a;

    .line 3
    :cond_0
    sget-object v1, Lcom/android/quicksearchbox/music/MusicServiceManager;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/music/MusicServiceManager;->b:Lb/a/a/h1/a;

    iget-object v1, p0, Lcom/android/quicksearchbox/music/MusicServiceManager;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lb/a/a/h1/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/quicksearchbox/music/MusicServiceManager;->b:Lb/a/a/h1/a;

    invoke-virtual {v0, p1}, Lb/a/a/h1/a;->a(I)V

    return-void
.end method

.method public a(JI)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 7
    invoke-virtual {p0, v0, v1, v1, p3}, Lcom/android/quicksearchbox/music/MusicServiceManager;->a([JIII)V

    return-void
.end method

.method public a(Lcom/android/quicksearchbox/music/MusicServiceManager$Callback;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/music/MusicServiceManager;->b:Lb/a/a/h1/a;

    invoke-virtual {v0, p1}, Lb/a/a/h1/a;->a(Lcom/android/quicksearchbox/music/MusicServiceManager$Callback;)V

    return-void
.end method

.method public a([JIII)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/quicksearchbox/music/MusicServiceManager;->b:Lb/a/a/h1/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/a/a/h1/a;->a([JIII)V

    return-void
.end method

.method public b()Lb/a/a/h1/b;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/music/MusicServiceManager;->b:Lb/a/a/h1/a;

    invoke-virtual {v0}, Lb/a/a/h1/a;->a()Lb/a/a/h1/b;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/android/quicksearchbox/music/MusicServiceManager$Callback;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/music/MusicServiceManager;->b:Lb/a/a/h1/a;

    invoke-virtual {v0, p1}, Lb/a/a/h1/a;->b(Lcom/android/quicksearchbox/music/MusicServiceManager$Callback;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/music/MusicServiceManager;->b:Lb/a/a/h1/a;

    iget-object v1, p0, Lcom/android/quicksearchbox/music/MusicServiceManager;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lb/a/a/h1/a;->b(Landroid/content/Context;)V

    return-void
.end method
