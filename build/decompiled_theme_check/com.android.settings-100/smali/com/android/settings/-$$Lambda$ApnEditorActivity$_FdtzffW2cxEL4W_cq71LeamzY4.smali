.class public final synthetic Lcom/android/settings/-$$Lambda$ApnEditorActivity$_FdtzffW2cxEL4W_cq71LeamzY4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/ApnEditorActivity;

.field private final synthetic f$1:Landroid/net/Uri;

.field private final synthetic f$2:Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/ApnEditorActivity;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/-$$Lambda$ApnEditorActivity$_FdtzffW2cxEL4W_cq71LeamzY4;->f$0:Lcom/android/settings/ApnEditorActivity;

    iput-object p2, p0, Lcom/android/settings/-$$Lambda$ApnEditorActivity$_FdtzffW2cxEL4W_cq71LeamzY4;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/settings/-$$Lambda$ApnEditorActivity$_FdtzffW2cxEL4W_cq71LeamzY4;->f$2:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/-$$Lambda$ApnEditorActivity$_FdtzffW2cxEL4W_cq71LeamzY4;->f$0:Lcom/android/settings/ApnEditorActivity;

    iget-object v1, p0, Lcom/android/settings/-$$Lambda$ApnEditorActivity$_FdtzffW2cxEL4W_cq71LeamzY4;->f$1:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settings/-$$Lambda$ApnEditorActivity$_FdtzffW2cxEL4W_cq71LeamzY4;->f$2:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/ApnEditorActivity;->lambda$updateApnDataToDatabase$0$ApnEditorActivity(Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method
