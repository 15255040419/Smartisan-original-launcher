.class Lcom/android/settings/widget/NationalFlagView$LocaleFlag;
.super Ljava/lang/Object;
.source "NationalFlagView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/NationalFlagView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleFlag"
.end annotation


# instance fields
.field flagRes:I

.field locale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/util/Locale;I)V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;->locale:Ljava/util/Locale;

    .line 172
    iput p2, p0, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;->flagRes:I

    return-void
.end method
