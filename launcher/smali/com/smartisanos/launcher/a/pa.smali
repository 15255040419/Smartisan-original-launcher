.class public Lcom/smartisanos/launcher/a/pa;
.super Ljava/lang/Object;
.source "UninstallDialog.java"


# static fields
.field private static lk:Z

.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/a/pa;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/pa;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/smartisanos/launcher/a/pa;->lk:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
