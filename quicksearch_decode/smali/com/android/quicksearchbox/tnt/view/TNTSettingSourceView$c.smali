.class public final Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$c;
.super Ljava/lang/Object;
.source "TNTSettingSourceView.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(Lb/a/a/l1/i/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;

.field public final synthetic b:Lb/a/a/l1/i/a;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;Lb/a/a/l1/i/a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$c;->a:Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;

    iput-object p2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$c;->b:Lb/a/a/l1/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$c;->b:Lb/a/a/l1/i/a;

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$c;->a:Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;

    invoke-static {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->b(Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.archive"

    invoke-virtual {p1, v1, p2, v0}, Lb/a/a/l1/i/a;->a(Ljava/lang/String;ZLjava/lang/Boolean;)V

    return-void
.end method
