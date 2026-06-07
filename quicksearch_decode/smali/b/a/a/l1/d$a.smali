.class public final Lb/a/a/l1/d$a;
.super Ljava/lang/Object;
.source "TNTSuggestionsListener.kt"

# interfaces
.implements Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$QueryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/l1/d;-><init>(Lcom/android/quicksearchbox/tnt/TNTSearchActivity;Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;Lcom/android/quicksearchbox/tnt/QueryFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/l1/d;


# direct methods
.method public constructor <init>(Lb/a/a/l1/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lb/a/a/l1/d$a;->a:Lb/a/a/l1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryChanged()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lsmartisanos/app/settings/search/SettingsEnabler;->setConfirm(Z)V

    .line 2
    iget-object v0, p0, Lb/a/a/l1/d$a;->a:Lb/a/a/l1/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/a/a/l1/d;->c(Z)V

    return-void
.end method
