.class final Landroidx/core/app/JobIntentService$CompatWorkItem;
.super Ljava/lang/Object;
.source "JobIntentService.java"

# interfaces
.implements Landroidx/core/app/JobIntentService$GenericWorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CompatWorkItem"
.end annotation


# instance fields
.field final mIntent:Landroid/content/Intent;

.field final mStartId:I

.field final synthetic this$0:Landroidx/core/app/JobIntentService;


# direct methods
.method constructor <init>(Landroidx/core/app/JobIntentService;Landroid/content/Intent;I)V
    .locals 0

    .line 363
    iput-object p1, p0, Landroidx/core/app/JobIntentService$CompatWorkItem;->this$0:Landroidx/core/app/JobIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p2, p0, Landroidx/core/app/JobIntentService$CompatWorkItem;->mIntent:Landroid/content/Intent;

    .line 365
    iput p3, p0, Landroidx/core/app/JobIntentService$CompatWorkItem;->mStartId:I

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .line 376
    iget-object v0, p0, Landroidx/core/app/JobIntentService$CompatWorkItem;->this$0:Landroidx/core/app/JobIntentService;

    iget p0, p0, Landroidx/core/app/JobIntentService$CompatWorkItem;->mStartId:I

    invoke-virtual {v0, p0}, Landroidx/core/app/JobIntentService;->stopSelf(I)V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 370
    iget-object p0, p0, Landroidx/core/app/JobIntentService$CompatWorkItem;->mIntent:Landroid/content/Intent;

    return-object p0
.end method
