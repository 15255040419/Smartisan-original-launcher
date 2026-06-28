.class Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings$ApnItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field item:Lsmartisanos/widget/ListContentItemCustom;

.field final synthetic this$1:Lcom/android/settings/ApnSettings$ApnItemAdapter;

.field vState:Landroid/widget/RadioButton;

.field vSummery:Landroid/widget/TextView;

.field vTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnSettings$ApnItemAdapter;)V
    .locals 0

    .line 698
    iput-object p1, p0, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->this$1:Lcom/android/settings/ApnSettings$ApnItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
