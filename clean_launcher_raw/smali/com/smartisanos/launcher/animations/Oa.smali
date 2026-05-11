.class synthetic Lcom/smartisanos/launcher/animations/Oa;
.super Ljava/lang/Object;
.source "PageViewAnimation.java"


# static fields
.field static final synthetic Tn:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;->values()[Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/smartisanos/launcher/animations/Oa;->Tn:[I

    :try_start_0
    sget-object v0, Lcom/smartisanos/launcher/animations/Oa;->Tn:[I

    sget-object v1, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;->IZ:Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/smartisanos/launcher/animations/Oa;->Tn:[I

    sget-object v1, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;->JZ:Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
