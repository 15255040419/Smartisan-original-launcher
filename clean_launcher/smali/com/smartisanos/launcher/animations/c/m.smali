.class public Lcom/smartisanos/launcher/animations/c/m;
.super Ljava/lang/Object;
.source "UnlockAnimationXMLInflater.java"


# instance fields
.field Aq:I

.field Bq:F

.field Cq:F

.field Dq:I

.field Eq:Ljava/util/ArrayList;

.field cellIndex:I

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/c/n;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/animations/c/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/c/m;->this$0:Lcom/smartisanos/launcher/animations/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/c/m;->Eq:Ljava/util/ArrayList;

    return-void
.end method
