.class Lcom/smartisanos/launcher/theme/p;
.super Lcom/smartisanos/smengine/a;
.source "ChangeThemeHandler.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/theme/t;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/t;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/p;->this$0:Lcom/smartisanos/launcher/theme/t;

    iput p2, p0, Lcom/smartisanos/launcher/theme/p;->val$index:I

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/p;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/t;->d(Lcom/smartisanos/launcher/theme/t;)[Lcom/smartisanos/smengine/F;

    move-result-object v0

    iget p0, p0, Lcom/smartisanos/launcher/theme/p;->val$index:I

    aget-object p0, v0, p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method
