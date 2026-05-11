.class Lcom/smartisanos/launcher/view/Rc;
.super Ljava/lang/Object;
.source "TrashView.java"

# interfaces
.implements Lcom/smartisanos/smengine/V;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Sc;


# direct methods
.method private constructor <init>(Lcom/smartisanos/launcher/view/Sc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Rc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/launcher/view/Sc;Lcom/smartisanos/launcher/view/Oc;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Rc;-><init>(Lcom/smartisanos/launcher/view/Sc;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/l;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Rc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Sc;->f(Lcom/smartisanos/smengine/l;)I

    move-result p0

    return p0
.end method

.method public b(Lcom/smartisanos/smengine/l;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Rc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Sc;->g(Lcom/smartisanos/smengine/l;)I

    move-result p0

    return p0
.end method
