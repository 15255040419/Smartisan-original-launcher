.class final Lcom/smartisanos/smengine/qa;
.super Ljava/lang/Object;
.source "Shader.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/smengine/sa;


# direct methods
.method private constructor <init>(Lcom/smartisanos/smengine/sa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/qa;->this$0:Lcom/smartisanos/smengine/sa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/smengine/sa;Lcom/smartisanos/smengine/pa;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/qa;-><init>(Lcom/smartisanos/smengine/sa;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/ra;Lcom/smartisanos/smengine/ra;)I
    .locals 0

    .line 1
    iget-object p0, p1, Lcom/smartisanos/smengine/ra;->mName:Ljava/lang/String;

    iget-object p1, p2, Lcom/smartisanos/smengine/ra;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/smengine/ra;

    check-cast p2, Lcom/smartisanos/smengine/ra;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/qa;->a(Lcom/smartisanos/smengine/ra;Lcom/smartisanos/smengine/ra;)I

    move-result p0

    return p0
.end method
