.class public Lcom/android/quicksearchbox/voice/VoiceSearchResultView$a;
.super Ljava/lang/Object;
.source "VoiceSearchResultView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/voice/VoiceSearchResultView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/voice/VoiceSearchResultView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView$a;->a:Lcom/android/quicksearchbox/voice/VoiceSearchResultView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView$a;->a:Lcom/android/quicksearchbox/voice/VoiceSearchResultView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
