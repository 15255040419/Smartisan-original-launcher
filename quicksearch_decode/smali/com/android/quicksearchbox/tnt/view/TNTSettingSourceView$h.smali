.class public final Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$h;
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
.field public final synthetic a:Lb/a/a/l1/i/a;


# direct methods
.method public constructor <init>(Lb/a/a/l1/i/a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$h;->a:Lb/a/a/l1/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$h;->a:Lb/a/a/l1/i/a;

    const-string v0, "enable_corpus_web_zhihu"

    invoke-virtual {p1, v0, p2}, Lb/a/a/l1/i/a;->a(Ljava/lang/String;Z)V

    return-void
.end method
