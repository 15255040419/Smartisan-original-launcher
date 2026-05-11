.class final Lcom/smartisanos/smengine/ia;
.super Ljava/lang/Object;
.source "SceneNode.java"


# static fields
.field private static final AE:Ljava/lang/Object;

.field private static DE:Lcom/smartisanos/smengine/ia;

.field private static EE:I


# instance fields
.field public child:Lcom/smartisanos/smengine/SceneNode;

.field public next:Lcom/smartisanos/smengine/ia;

.field public pointerIdBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sput-object v0, Lcom/smartisanos/smengine/ia;->AE:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/smartisanos/smengine/SceneNode;I)Lcom/smartisanos/smengine/ia;
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/ia;->AE:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/smengine/ia;->DE:Lcom/smartisanos/smengine/ia;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/ia;

    invoke-direct {v1}, Lcom/smartisanos/smengine/ia;-><init>()V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/smartisanos/smengine/ia;->DE:Lcom/smartisanos/smengine/ia;

    .line 5
    iget-object v2, v1, Lcom/smartisanos/smengine/ia;->next:Lcom/smartisanos/smengine/ia;

    sput-object v2, Lcom/smartisanos/smengine/ia;->DE:Lcom/smartisanos/smengine/ia;

    .line 6
    sget v2, Lcom/smartisanos/smengine/ia;->EE:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/smartisanos/smengine/ia;->EE:I

    const/4 v2, 0x0

    .line 7
    iput-object v2, v1, Lcom/smartisanos/smengine/ia;->next:Lcom/smartisanos/smengine/ia;

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iput-object p0, v1, Lcom/smartisanos/smengine/ia;->child:Lcom/smartisanos/smengine/SceneNode;

    .line 10
    iput p1, v1, Lcom/smartisanos/smengine/ia;->pointerIdBits:I

    return-object v1

    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public recycle()V
    .locals 4

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/ia;->AE:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lcom/smartisanos/smengine/ia;->EE:I

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/smengine/ia;->DE:Lcom/smartisanos/smengine/ia;

    iput-object v1, p0, Lcom/smartisanos/smengine/ia;->next:Lcom/smartisanos/smengine/ia;

    .line 4
    sput-object p0, Lcom/smartisanos/smengine/ia;->DE:Lcom/smartisanos/smengine/ia;

    .line 5
    sget v1, Lcom/smartisanos/smengine/ia;->EE:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/smartisanos/smengine/ia;->EE:I

    goto :goto_0

    .line 6
    :cond_0
    iput-object v3, p0, Lcom/smartisanos/smengine/ia;->next:Lcom/smartisanos/smengine/ia;

    .line 7
    :goto_0
    iput-object v3, p0, Lcom/smartisanos/smengine/ia;->child:Lcom/smartisanos/smengine/SceneNode;

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/ia;->child:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/smengine/ia;->child:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
