.class final Landroid/support/v4/app/JobIntentService$CompatWorkItem;
.super Ljava/lang/Object;
.source "JobIntentService.java"

# interfaces
.implements Landroid/support/v4/app/JobIntentService$GenericWorkItem;


# instance fields
.field final mIntent:Landroid/content/Intent;

.field final mStartId:I

.field final synthetic this$0:Landroid/support/v4/app/JobIntentService;


# direct methods
.method constructor <init>(Landroid/support/v4/app/JobIntentService;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/app/JobIntentService$CompatWorkItem;->this$0:Landroid/support/v4/app/JobIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/support/v4/app/JobIntentService$CompatWorkItem;->mIntent:Landroid/content/Intent;

    .line 3
    iput p3, p0, Landroid/support/v4/app/JobIntentService$CompatWorkItem;->mStartId:I

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkItem;->this$0:Landroid/support/v4/app/JobIntentService;

    iget p0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkItem;->mStartId:I

    invoke-virtual {v0, p0}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkItem;->mIntent:Landroid/content/Intent;

    return-object p0
.end method
