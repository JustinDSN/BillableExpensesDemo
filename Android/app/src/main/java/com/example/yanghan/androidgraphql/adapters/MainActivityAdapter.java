package com.example.yanghan.androidgraphql.adapters;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.example.yanghan.androidgraphql.R;

import java.util.List;

public class MainActivityAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private Context mContext;
    private List<String> mData;

    public MainActivityAdapter(Context context, List<String> data) {
        mContext = context;
        mData = data;
    }

    public void setData(List<String> data) {
        mData = data;
        notifyDataSetChanged();
    }

    @NonNull
    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        return new ItemHolder(LayoutInflater.from(mContext).inflate(R.layout.item_activity_view,
                parent, false));
    }

    @Override
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder holder, int position) {
        handleItem((ItemHolder) holder, position);
    }

    private void handleItem(ItemHolder holder, int position) {
        if(holder.itemString != null) {
            holder.itemString.setText(mData.get(position));
        }
    }

    @Override
    public int getItemCount() {
        return mData.size();
    }

    public class ItemHolder extends RecyclerView.ViewHolder {
        protected TextView itemString;

        public ItemHolder(View itemView) {
            super(itemView);
            itemString = itemView.findViewById(R.id.item_string);
        }
    }
}
