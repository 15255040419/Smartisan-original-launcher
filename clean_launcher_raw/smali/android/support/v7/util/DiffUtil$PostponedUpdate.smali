.class Landroid/support/v7/util/DiffUtil$PostponedUpdate;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# instance fields
.field currentPos:I

.field posInOwnerList:I

.field removal:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->posInOwnerList:I

    .line 3
    iput p2, p0, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    .line 4
    iput-boolean p3, p0, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->removal:Z

    return-void
.end method
