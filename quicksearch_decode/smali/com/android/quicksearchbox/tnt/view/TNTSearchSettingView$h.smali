.class public final Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$h;
.super Ljava/lang/Object;
.source "TNTSearchSettingView.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$h;

    invoke-direct {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$h;-><init>()V

    sput-object v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$h;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
