.class synthetic Lcom/android/settings/widget/HorizontalOptionCheckView$1;
.super Ljava/lang/Object;
.source "HorizontalOptionCheckView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/HorizontalOptionCheckView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$settings$widget$HorizontalOptionCheckView$Position:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 149
    invoke-static {}, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->values()[Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/widget/HorizontalOptionCheckView$1;->$SwitchMap$com$android$settings$widget$HorizontalOptionCheckView$Position:[I

    :try_start_0
    sget-object v0, Lcom/android/settings/widget/HorizontalOptionCheckView$1;->$SwitchMap$com$android$settings$widget$HorizontalOptionCheckView$Position:[I

    sget-object v1, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->LEFT:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    invoke-virtual {v1}, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/settings/widget/HorizontalOptionCheckView$1;->$SwitchMap$com$android$settings$widget$HorizontalOptionCheckView$Position:[I

    sget-object v1, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->MIDDLE:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    invoke-virtual {v1}, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/settings/widget/HorizontalOptionCheckView$1;->$SwitchMap$com$android$settings$widget$HorizontalOptionCheckView$Position:[I

    sget-object v1, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->RIGHT:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    invoke-virtual {v1}, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
