.class public final Lb/a/a/l1/d$g;
.super Ljava/lang/Object;
.source "TNTSuggestionsListener.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/l1/d;->h(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/l1/d;

.field public final synthetic b:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

.field public final synthetic c:J


# direct methods
.method public constructor <init>(Lb/a/a/l1/d;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 0

    iput-object p1, p0, Lb/a/a/l1/d$g;->a:Lb/a/a/l1/d;

    iput-object p2, p0, Lb/a/a/l1/d$g;->b:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    iput-wide p3, p0, Lb/a/a/l1/d$g;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lb/a/a/l1/d$g;->a:Lb/a/a/l1/d;

    iget-object p2, p0, Lb/a/a/l1/d$g;->b:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    iget-wide v0, p0, Lb/a/a/l1/d$g;->c:J

    invoke-static {p1, p2, v0, v1}, Lb/a/a/l1/d;->f(Lb/a/a/l1/d;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    return-void
.end method
