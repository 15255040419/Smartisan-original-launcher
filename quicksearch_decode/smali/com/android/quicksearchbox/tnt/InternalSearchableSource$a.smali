.class public Lcom/android/quicksearchbox/tnt/InternalSearchableSource$a;
.super Ljava/lang/Object;
.source "InternalSearchableSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/SourceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/InternalSearchableSource;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->r:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$b;

    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$b;->a(Ljava/lang/String;)V

    return-void
.end method
