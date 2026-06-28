.class Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "ModernAsyncTask.java"


# instance fields
.field final mData:[Ljava/lang/Object;

.field final mTask:Landroid/support/v4/content/ModernAsyncTask;


# direct methods
.method varargs constructor <init>(Landroid/support/v4/content/ModernAsyncTask;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroid/support/v4/content/ModernAsyncTask;

    .line 3
    iput-object p2, p0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    return-void
.end method
