.class public Lcom/smartisanos/launcher/ra;
.super Ljava/lang/Object;
.source "HardwareAdaptation.java"


# instance fields
.field public Lh:Ljava/lang/String;

.field public Mh:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/smartisanos/launcher/ra;->Lh:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/smartisanos/launcher/ra;->Mh:I

    return-void
.end method
