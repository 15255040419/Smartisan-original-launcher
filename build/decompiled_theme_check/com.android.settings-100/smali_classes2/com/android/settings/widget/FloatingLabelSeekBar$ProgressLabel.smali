.class public Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;
.super Ljava/lang/Object;
.source "FloatingLabelSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/FloatingLabelSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressLabel"
.end annotation


# instance fields
.field private mProgress:I

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;->mText:Ljava/lang/CharSequence;

    .line 339
    iput p2, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;->mProgress:I

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;)I
    .locals 0

    .line 332
    iget p0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;->mProgress:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;)Ljava/lang/CharSequence;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method
