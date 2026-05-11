.class public Lcom/smartisanos/smengine/ta;
.super Ljava/lang/Object;
.source "ShaderManager.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private CS:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/smengine/ta;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/ta;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/ta;->CS:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public Xa(Ljava/lang/String;)Lcom/smartisanos/smengine/sa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/ta;->CS:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/sa;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/smartisanos/smengine/sa;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/ta;->CS:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
